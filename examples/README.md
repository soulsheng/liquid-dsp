
liquid-dsp examples
===================

This directory contains all the examples for interfacing the liquid modules.

 * `agc_example.c`:
    Automatic gain control example demonstrating the transient responses
    between the three AGC types (LIQUID_AGC_DEFAULT, LIQUID_AGC_LOG,
    LIQUID_AGC_EXP).

 * `agc_qpsk_example.c`:
    Automatic gain control test for data signals with fluctuating signal
    levels.  QPSK modulation introduces periodic random zero-crossings which
    gives instantaneous amplitude levels near zero.  This example tests the
    response of the AGC to these types of signals.

 * `agc_squelch_example.c`:
    Automatic gain control with squelch example.  This example demonstrates
    the squelch control functionality of the AGC module.  Squelch is used to
    suppress the output of the AGC when the signal level drops below a certain
    threshold.

 * `ampmodem_example.c`:
    Tests simple modulation/demodulation of the ampmodem (analog amplitude
    modulator/demodulator) with noise, carrier phase, and carrier frequency
    offsets.

 * `asgram_example.c`:
    ASCII spectrogram example.  This example demonstrates the functionality of
    the ASCII spectrogram.  A sweeping complex sinusoid is generated and the
    resulting frequency response is printed to the screen.

 * `autocorr_cccf_example.c`:
    This example demonstrates the autocorr (auto-correlation) object
    functionality.  A random time-domain sequence is generated which exhibits
    time-domain repetitions (auto-correlation properties), for example:
    abcdabcdabcd....abcd.  The sequence is pushed through the autocorr object,
    and the results are written to an output file. The command-line arguments
    allow the user to experiment with the sequence length, number of sequence
    repetitions, and properties of the auto-correlator, as well as signal-to-
    noise ratio.

 * `bpacketsync_example.c`:

 * `bpresync_example.c`:
    This example demonstrates the binary pre-demodulator synchronizer. A random
    binary sequence is generated, modulated with BPSK, and then interpolated.
    The resulting sequence is used to generate a bpresync object which in turn
    is used to detect a signal in the presence of carrier frequency and timing
    offsets and additive white Gauss noise.

 * `bsequence_example.c`:
    This example demonstrates the interface to the bsequence (binary sequence)
    object.  The bsequence object acts like a buffer of bits which are stored
    and manipulated efficiently in memory.

 * `bufferf_example.c`:

 * `cgsolve_example.c`:
    Solve linear system of equations `Ax = b` using the conjugate-
    gradient method where A is a symmetric positive-definite matrix.
    Compare speed to matrixf_linsolve() for same system.

 * `chromosome_example.c`:

 * `compand_cf_example.c`:

 * `compand_example.c`:
    This example demonstrates the interface to the compand function
    (compression, expansion).  The compander is typically used with the
    quantizer to increase the dynamic range of the converter, particularly for
    low-level signals.  The transfer function is computed (emperically) and
    printed to the screen.

 * `complementary_codes_example.c`:
    This example demonstrates how to generate complementary binary codes
    in liquid.  A pair of codes is generated using the bsequence
    interface, their auto-correlations are computed, and the result is
    summed and printed to the screen.  The results are also printed to
    an output file, which plots the sequences and their
    auto-correlations.

    SEE ALSO: `bsequence_example.c`
              `msequence_example.c`

 * `crc_example.c`:
    Cyclic redundancy check (CRC) example.  This example demonstrates how a
    CRC can be used to validate data received through un-reliable means (e.g.
    a noisy channel).  A CRC is, in essence, a strong algebraic error
    detection code that computes a key on a block of data using base-2
    polynomials.  Also available is a checksum for data validation.

    SEE ALSO: `fec_example.c`

 * `cvsd_example.c`:
    Continuously-variable slope delta example, sinusoidal input. This example
    demonstrates the CVSD audio encoder interface, and its response to a
    sinusoidal input.  The output distortion ratio is computed, and the
    time-domain results are written to a file.

 * `decim_crcf_example.c`:
    This example demonstrates the decim object (decimator) interface.
    Data symbols are generated and then interpolated according to a
    finite impulse response square-root Nyquist filter.  The resulting
    sequence is then decimated with the same filter, matched to the
    interpolator.

    SEE ALSO: `interp_crcf_example.c`

 * `decim_rrrf_example.c`:

 * `dotprod_cccf_example.c`:
    This example demonstrates the interface to the complex
    floating-point dot product object (dotprod_cccf).

 * `dotprod_rrrf_example.c`:
    This example demonstrates the interface to the floating-point dot
    product object (dotprod_rrrf).

 * `eqlms_cccf_blind_example.c`:
 * `eqlms_cccf_example.c`:
 * `eqrls_cccf_example.c`:
 * `fct_example.c`:

 * `fec_example.c`:
    This example demonstrates the interface for forward error-correction (FEC)
    codes.  A buffer of data bytes is encoded and corrupted with several
    errors.  The decoder then attempts to recover the original data set.  The
    user may select the FEC scheme from the command-line interface.

    SEE ALSO: `crc_example.c`
              `checksum_example.c`
              `packetizer_example.c`

 * `fec_soft_example.c`:
    This example demonstrates the interface for forward error-correction
    (FEC) codes with soft-decision decoding.  A buffer of data bytes is
    encoded before the data are corrupted with at least one error and
    noise. The decoder then attempts to recover the original data set
    from the soft input bits.  The user may select the FEC scheme from
    the command-line interface.

    SEE ALSO: `fec_example.c`
              `packetizer_soft_example.c`

 * `fft_example.c`:
    This example demonstrates the interface to the fast discrete Fourier
    transform (FFT).

    SEE ALSO: `mdct_example.c`
              `fct_example.c`

 * `firdes_kaiser_example.c`:
    This example demonstrates finite impulse response filter design using a
    Kaiser window.
    
    SEE ALSO: `firdespm_example.c`

 * `firdespm_example.c`:
    This example demonstrates finite impulse response filter design using the
    Parks-McClellan algorithm.

    SEE ALSO: `firdes_kaiser_example.c`

 * `firfarrow_rrrf_sine_example.c`:

 * `firfilt_rrrf_example.c`:

 * `firhilb_decim_example.c`:
    Hilbert transform: 2:1 real-to-complex decimator.  This example
    demonstrates the functionality of firhilb (finite impulse response Hilbert
    transform) decimator which converts a real time series into a complex one
    with half the number of samples.  The input is a real-valued sinusoid of N
    samples. The output is a complex-valued sinusoid of N/2 samples.

    SEE ALSO: `firhilb_interp_example.c`

 * `firhilb_example.c`:

 * `firhilb_interp_example.c`:
    Hilbert transform: 1:2 complex-to-real interpolator.  This example
    demonstrates the functionality of firhilb (finite impulse response Hilbert
    transform) interpolator which converts a complex time series into a real
    one with twice the number of samples.  The input is a complex-valued
    sinusoid of N samples. The output is a real-valued sinusoid of 2*N
    samples.

    SEE ALSO: `firhilb_decim_example.c`

 * `firpfbch_analysis_example.c`:
    Example of the analysis channelizer filterbank. The input signal is
    a frequency-modulated sweep over the entire band. Each filter is
    illuminated as the carrier passes through its bandwidth.

 * `firpfbch_example.c`:
    Finite impulse response (FIR) polyphase filter bank (PFB)
    channelizer example.  This example demonstrates the functionality of
    the polyphase filter bank channelizer and how its output is
    mathematically equivalent to a series of parallel down-converters
    (mixers/decimators). Both the synthesis and analysis filter banks
    are presented.

 * `firpfbch_synthesis_example.c`:
    Example of the synthesis channelizer filterbank.  Random symbols are
    generated and loaded into the bins of the channelizer and the
    time-domain signal is synthesized.  Subcarriers around the band
    edges are disabled as well as those near 0.25 to demonstrate the
    synthesizer's ability to efficiently notch the spectrum. The results
    are printed to a file for plotting.

 * `flexframesync_example.c`:
    This example demonstrates the basic interface to the flexframegen and
    flexframesync objects used to completely encapsulate raw data bytes
    into frame samples (nearly) ready for over-the-air transmission. A
    14-byte header and variable length payload are encoded into baseband
    symbols using the flexframegen object.  The resulting symbols are
    interpolated using a root-Nyquist filter and the resulting samples are
    then fed into the flexframesync object which attempts to decode the
    frame. Whenever frame is found and properly decoded, its callback
    function is invoked.

 * `flexframesync_reconfig_example.c`:
    Demonstrates the reconfigurability of the flexframegen and
    flexframesync objects.

 * `framesync64_example.c`:
    This example demonstrates the interfaces to the framegen64 and
    framesync64 objects used to completely encapsulate data for
    over-the-air transmission.  A 24-byte header and 64-byte payload are
    encoded, modulated, and interpolated using the framegen64 object.
    The resulting complex baseband samples are corrupted with noise and
    moderate carrier frequency and phase offsets before the framesync64
    object attempts to decode the frame.  The resulting data are
    compared to the original to validate correctness.

    SEE ALSO: `flexframesync_example.c`

 * `freqmodem_example.c`:

 * `gasearch_example.c`:

 * `gasearch_knapsack_example.c`:

 * `gmskmodem_example.c`:

 * `gradsearch_example.c`:

 * `gradsearch_datafit_example.c`:
    Fit 3-parameter curve to sampled data set in the minimum
    mean-squared error sense.

 * `iirdes_analog_example.c`:
    Tests infinite impulse reponse (IIR) analog filter design. While this
    example seems purely academic as IIR filters used in liquid are all
    digital, it is important to realize that they are all derived from their
    analog counterparts. This example serves to check the response of the
    analog filters to ensure they are correct.  The results of design are
    written to a file.

    SEE ALSO: `iirdes_example.c`
              `iirfilt_crcf_example.c`

 * `iirdes_example.c`:
    Tests infinite impulse reponse (IIR) digital filter design.

    SEE ALSO: `iirdes_analog_example.c`
              `iirfilt_crcf_example.c`

 * `iirdes_pll_example.c`:
    This example demonstrates 2nd-order IIR phase-locked loop filter
    design with a practical simulation.

    SEE ALSO: `nco_pll_example.c`
              `nco_pll_modem_example.c`

 * `iirfilt_crcf_example.c`:
    Complex infinite impulse response filter example. Demonstrates the
    functionality of iirfilt by designing a low-order prototype (e.g.
    Butterworth) and using it to filter a noisy signal.  The filter
    coefficients are real, but the input and output arrays are complex.  The
    filter order and cutoff frequency are specified at the beginning.

 * `interleaver_example.c`:
    This example demonstrates the functionality of the liquid interleaver
    object.  Interleavers serve to distribute  grouped bit errors evenly
    throughout a block of data. This aids certain forward error-correction
    codes in correcting bit errors.  In this example, data bits are
    interleaved and de-interleaved; the resulting sequence is validated to
    match the original.

    SEE ALSO: `packetizer_example.c`

 * `interleaver_scatterplot_example.c`:

 * `interleaver_soft_example.c`:

 * `interp_crcf_example.c`:
    This example demonstrates the interp object (interpolator)
    interface. Data symbols are generated and then interpolated
    according to a finite impulse response Nyquist filter.

 * `kbd_window_example.c`:
 * `lpc_example.c`:

 * `matched_filter_example.c`:

 * `math_lngamma_example.c`:
    Demonstrates accuracy of lngamma function.

 * `mdct_example.c`:

 * `modem_arb_example.c`:
    This example demonstrates the functionality of the arbitrary modem, a
    digital modulator/demodulator object with signal constellation points
    chosen arbitrarily.  A simple bit-error rate simulation is then run to
    test the performance of the modem.  The results are written to a file.

    SEE ALSO: `modem_example.c`

 * `modem_example.c`:
    This example demonstates the digital modulator/demodulator (modem) object.
    Data symbols are modulated into complex samples which are then demodulated
    without noise or phase offsets.  The user may select the modulation scheme
    via the command-line interface.

    SEE ALSO: `modem_arb_example.c`

* `modemq16_example.c`:
    Fixed-point linear modem example.

* `modemq16_soft_example.c`:
    This example demonstates soft demodulation of linear
    modulation schemes (fixed-point math).

 * `modem_soft_example.c`:
    This example demonstates soft demodulation of linear
    modulation schemes.

 * `modular_arithmetic_example.c`:
    This example demonstates some modular arithmetic functions.

 * `msequence_example.c`:
    This example demonstrates the auto-correlation properties of a
    maximal-length sequence (m-sequence).  An m-sequence of a certain length
    is used to generate two binary sequences (buffers) which are then
    cross-correlated.  The resulting correlation produces -1 for all values
    except at index zero, where the sequences align.

    SEE ALSO: `bsequence_example.c`

 * `nco_example.c`:
    This example demonstrates the most basic functionality of the
    numerically-controlled oscillator (NCO) object.

    SEE ALSO: `nco_pll_example.c`
              `nco_pll_modem_example.c`

 * `nco_pll_example.c`:
    This example demonstrates how the use the nco/pll object
    (numerically-controlled oscillator with phase-locked loop) interface for
    tracking to a complex sinusoid.  The loop bandwidth, phase offset, and
    other parameter can be specified via the command-line interface.

    SEE ALSO: `nco_example.c`
              `nco_pll_modem_example.c`

 * `nco_pll_modem_example.c`:
    This example demonstrates how the nco/pll object (numerically-controlled
    oscillator with phase-locked loop) can be used for carrier frequency
    recovery in digital modems.  The modem type, SNR, and other parameters are
    specified via the command-line interface.

    SEE ALSO: `nco_example.c`
              `nco_pll_example.c`

 * `nyquist_filter_example.c`:
 * `ofdmflexframesync_example.c`:
 * `ofdmframegen_example.c`:
 * `ofdmframesync_example.c`:

 * `packetizer_example.c`:
    Demonstrates the functionality of the packetizer object.  Data are encoded
    using two forward error-correction schemes (an inner and outer code)
    before data errors are introduced.  The decoder then tries to recover the
    original data message.

    SEE ALSO: `fec_example.c`
              `crc_example.c`

 * `packetizer_soft_example.c`:
    This example demonstrates the functionality of the packetizer object
    for soft-decision decoding.  Data are encoded using two forward error-
    correction schemes (an inner and outer code) before noise and data
    errors are added. The decoder then tries to recover the original data
    message. Only the outer code uses soft-decision decoding.

    SEE ALSO: `fec_soft_example.c`
              `packetizer_example.c`

 * `pll_example.c`:
    Demonstrates a basic phase-locked loop to track the phase of a
    complex sinusoid.

 * `poly_findroots_example.c`:

 * `polyfit_example.c`:
    Test polynomial fit to sample data.

    SEE ALSO: `polyfit_lagrange_example.c`

 * `polyfit_lagrange_example.c`:
    Test exact polynomial fit to sample data using Lagrange interpolating
    polynomials.

    SEE ALSO: `polyfit_example.c`

 * `qnsearch_example.c`:
 * `quantize_example.c`:

 * `random_histogram_example.c`:
    This example tests the random number generators for different
    distributions.

 * `repack_bytes_example.c`:
    This example demonstrates the repack_bytes() interface by packing a
    sequence of three 3-bit symbols into five 2-bit symbols.  The
    results are printed to the screen.  Because the total number of bits
    in the input is 9 and not evenly divisible by 2, the last of the 5
    output symbols has a zero explicitly padded to the end.

 * `resamp2_crcf_decim_example.c`:
    Halfband decimator.  This example demonstrates the interface to the
    decimating halfband resampler.  A low-frequency input sinusoid is
    generated and fed into the decimator two samples at a time, producing one
    output at each iteration.  The results are written to an output file.

    SEE ALSO: `resamp2_crcf_interp_example.c`
              `decim_rrrf_example.c`

 * `resamp2_crcf_example.c`:
    This example demonstrates the halfband resampler running as both an
    interpolator and a decimator. A narrow-band signal is first
    interpolated by a factor of 2, and then decimated. The resulting RMS
     error between the final signal and original is computed and printed
    to the screen.

 * `resamp2_crcf_filter_example.c`:
    Halfband (two-channel) filterbank example. This example demonstrates
    the analyzer/synthesizer execute() methods for the resamp2_xxxt
    family of objects.

    NOTE: The filterbank is not a perfect reconstruction filter; a
          significant amount of distortion occurs in the transition band
          of the half-band filters. See the 'qmfb' (quadrature mirror
          filterbank) object in the experimental section.

 * `resamp2_crcf_interp_example.c`:
    Halfband interpolator.  This example demonstrates the interface to the
    interpolating halfband resampler.  A low-frequency input sinusoid is
    generated and fed into the interpolator one sample at a time, producing
    two outputs at each iteration.  The results are written to an output file.

    SEE ALSO: `resamp2_crcf_decim_example.c`
              `interp_crcf_example.c`

 * `resamp_crcf_example.c`:

 * `scramble_example.c`:
    Data-scrambling example.  Physical layer synchronization of received
    waveforms relies on independent and identically distributed underlying
    data symbols.  If the message sequence, however, is '00000....' and the
    modulation scheme is BPSK, the synchronizer probably won't be able to
    recover the symbol timing.  It is imperative to increase the entropy of
    the data for this to happen.  The data scrambler routine attempts to
    'whiten' the data sequence with a bit mask in order to achieve maximum
    entropy.  This example demonstrates the interface.

 * `smatrix_example.c`:

 * `symsync_crcf_example.c`:

 * `wdelayf_example.c`:

 * `windowf_example.c`:
    This example demonstrates the functionality of a window buffer (also
    known as a circular or ring buffer) of floating-point values.
    Values are written to and read from the buffer using several
    different methods.

    SEE ALSO: `bufferf_example.c`
              `wdelayf_example.c`


experimental examples
---------------------

Some examples are only available when configured with the option
`--enable-experimental`

 * `ann_bitpattern_example.c`:
    Artificial neural network (ann) bit pattern example.  This example
    demonstrates the functionality of the ann module by training a
    simple network to learn prime numbers:

        n   :   b0  b1  b2  |   y
        --------------------+------
        0   :   0   0   0   |   1
        1   :   0   0   1   |   1
        2   :   0   1   0   |   1
        3   :   0   1   1   |   1
        4   :   1   0   0   |   0
        5   :   1   0   1   |   1
        6   :   1   1   0   |   0
        7   :   1   1   1   |   1


 * `ann_example.c`:
    Artificial neural network (ann) example. This example demonstrates the
    functionality of the ann module by training a simple network to learn the
    output of a continuous function.

 * `ann_layer_example.c`:

 * `ann_maxnet_example.c`:
   Artificial neural network (ann) maxnet example. This example demonstrates
   the functionality of the ann maxnet by training a network to recognize and
   separate two input patterns in a 2-dimensional plane.
    
 * `ann_node_example.c`:

 * `ann_xor_example.c`:
    Artificial neural network (ann) eXclusive OR example. This example
    demonstrates the functionality of the ann  module by training a simple
    network to learn the output of an exclusive or (xor) circuit:

        x   y   |   z
        --------+-----
        0   0   |   0
        0   1   |   1
        1   0   |   1
        1   1   |   0

 * `dds_cccf_example.c`:
    Direct digital synthesizer example.  This example demonstrates the
    interface to the direct digital synthesizer.  A baseband pulse is
    generated and then efficiently up-converted (interpolated and mixed up)
    using the DDS object.  The resulting signal is then down-converted (mixed
    down and decimated) using the same DDS object.  Results are written to a
    file.

    SEE ALSO: `interp_crcf_example.c`
              `decim_crcf_example.c`
              `resamp2_crcf_example.c`
              `nco_example.c`

 * `fading_generator_example.c`:

 * `fbasc_example.c`:

 * `gport_dma_example.c`:

 * `gport_dma_threaded_example.c`:

 * `gport_ima_example.c`:

 * `gport_ima_threaded_example.c`:

 * `gport_mma_threaded_example.c`:

 * `iirqmfb_crcf_example.c`:

 * `itqmfb_crcf_example.c`:

 * `itqmfb_rrrf_example.c`:
   
 * `kmeans_example.c`:

 * `ofdmoqam_example.c`:

 * `ofdmoqam_firpfbch_example.c`:

 * `ofdmoqamframe64gen_example.c`:

 * `ofdmoqamframe64sync_example.c`:

 * `ofdmoqamframesync_example.c`:

 * `patternset_example.c`:

 * `prqmfb_crcf_example.c`:

 * `qmfb_crcf_analysis_example.c`:

 * `qmfb_crcf_synthesis_example.c`:
    This example demonstrates the functionality of the patternset
    structure for easily managing pattern sets for optimization.

 * `ricek_channel_example.c`:

 * `symsync2_crcf_example.c`:

 * `symsynclp_crcf_example.c`: